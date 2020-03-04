/*
 入口
 服务端 app.js
 */
// 加载express模块
var express = require('express');
// 加载模板处理模块
var swig = require('swig');
// 加载body-parser,用来处理post提交过来的数据
var bodyParser = require('body-parser');
// 加载session模块
var session = require('express-session');
// 加载cookie-parser模板
var  cookieParser= require('cookie-parser');
var router = express.Router();
// 创建webf服务器
var app = express();

// 引入路由器
var userRouter = require('./routers/admin')
var mainRouter = require('./routers/main')
var apiRouter = require('./routers/api')

app.listen(8088, function(req, res) {
	console.log('Server is running in port 8088');
});

// session
app.use(cookieParser('sessionAn'));
app.use(session({
	secret: 'sessionAn', // 与cookieParser中的一致
	resave: true,
	saveUninitialized: true,
	 cookie: { maxAge: 60 }
}));

// 设置静态文件托管
// 当用户访问的url以/public开始，那么直接返回对应的__dirname+'/public'下的文件
app.use('/public', express.static(__dirname + '/public'));
// path.join(__dirname, 'public') 表示工程路径后面追加 public
// app.use(express.static(path.join(__dirname, 'public')))

// 配置应用模板
// 定义当前应用所使用的模板引擎
app.engine('html', swig.renderFile);
// 设置模板文件存放的目录
app.set('views', './views');
// 注册所使用的模板引擎;
// 参数1：必须是view engine,
// 参数2：和app.engine这个方法中定义的模板引擎的名称（第一个参数）是一致的。
app.set('view engine', 'html');
// 在开发过程中，需要取消模板缓存
swig.setDefaults({
	cache: false
});
//bodyparser设置
app.use(bodyParser.urlencoded({
	extended: true
}));
// 
// app.use(session({
// 	secret: 'keyboard cat',
// 	name: 'xxxxID',
// 	resave: true,
// 	rolling: true,
// 	saveUninitialized: true,
// 	cookie: {
// 		secure: true,
// 		// domain: 'xxx.xxx.xxx.xxx:xxxx', // 域名
// 		path: '/'
// 		httpOnly: true,
// 		maxAge: 1800000
// 	}
// }))
// 挂载路由器
app.use('/admin', userRouter);
app.use('/api', apiRouter);
app.use('/', mainRouter);
