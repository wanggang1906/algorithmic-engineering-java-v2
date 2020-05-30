## web系统集成算法的实践

### 功能模块

#### 基本管理系统


#### 算法实践



##### 模块命名
    + eladmin-xxx - 基本的web信息系统，原项目中的作者信息不做任何修改
    + eladmin-web-study - 自己的web研究模块和前端的接口
        + controller - web测试相关
        + rest - 其他web技术学习时与前端的接口
    + eladmin-data-visual - 数据可视化
    + eladmin-big-data-xxx - 大数据各组件相关的模块
    + alg-python-(rest/sock/rpc) - 基本的和python通信的模块，使用sock或者微服务的方式【待定】
        + sock - 只能单向传递数据
        + rest/http - 需要把python做成web服务发布，如使用flask，django等
        + webService
        + 微服务类似
        + 或使用中间文件的方式 - 简单粗暴
        + webSocket
    + alg-xxx - 基本的算法模块，若有多个
    
#### 新建模块
    + 以eladmin为父模块，新键子模块
    + 模块建好后在sys模块的pom中引入新键的模块，需指定id，版本等所有信息
    + 新键模块的代码路径必须要为me.zhengjie下