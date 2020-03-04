/* 
	引入mysql模块；
	创建连接池对象；
	导出连接池对象。
 */
 // 加载数据库模块
var mysql = require('mysql');
var pool = mysql.createPool({
	host: 'localhost',
	user: 'root',
	port: '3306',
	password : '123456',
	database : 'perfume_sql',
	// connectionLimit:20
});
module.exports = pool;
