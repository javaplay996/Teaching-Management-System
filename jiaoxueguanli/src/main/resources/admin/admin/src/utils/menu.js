const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"教师管理",
                        "menuJump":"列表",
                        "tableName":"jiaoshi"
                    }
                ],
                "menu":"教师管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"学生管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"学生管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"课程管理",
                        "menuJump":"列表",
                        "tableName":"kecheng"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"课程留言管理",
                        "menuJump":"列表",
                        "tableName":"kechengLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"课程收藏管理",
                        "menuJump":"列表",
                        "tableName":"kechengCollection"
                    }
                ],
                "menu":"课程管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"课程表信息管理",
			            "menuJump":"列表",
			            "tableName":"paike"
			        }
			    ],
			    "menu":"课程表信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "删除"
			            ],
			            "menu":"上课签到管理",
			            "menuJump":"列表",
			            "tableName":"qiandao"
			        }
			    ],
			    "menu":"上课签到管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "删除"
			            ],
			            "menu":"学生请假管理",
			            "menuJump":"列表",
			            "tableName":"qingjia"
			        }
			    ],
			    "menu":"学生请假管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"学籍信息管理",
			            "menuJump":"列表",
			            "tableName":"xuejixinxi"
			        }
			    ],
			    "menu":"学籍信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"作业管理",
			            "menuJump":"列表",
			            "tableName":"zuoye"
			        }
			    ],
			    "menu":"作业管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"成绩信息管理",
			            "menuJump":"列表",
			            "tableName":"chengji"
			        }
			    ],
			    "menu":"成绩信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"班级管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryBanji"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"成绩类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryChengji"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"第几节管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryJieke"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"课程类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryKecheng"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"公告类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"周次管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryXingqi"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"学期管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryXueqi"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"学籍状态管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryZhuang"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"作业类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryZuoye"
			        }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"请假类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryQingjia"
                    }
			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告信息管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
            /*,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"数据备份",
			            "menuJump":"列表",
			            "tableName":"beifen"
			        },
					{
					    "buttons":[
					        "查看"
					    ],
					    "menu":"数据还原",
					    "menuJump":"列表",
					    "tableName":"huanyuan"
					}
			    ],
			    "menu":"数据库管理"
			}*/
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"学生管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"学生管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"课程管理",
	                    "menuJump":"列表",
	                    "tableName":"kecheng"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"课程留言管理",
	                    "menuJump":"列表",
	                    "tableName":"kechengLiuyan"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"课程收藏管理",
	                    "menuJump":"列表",
	                    "tableName":"kechengCollection"
	                }
	            ],
	            "menu":"课程管理"
	        },{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "删除"
			            ],
			            "menu":"上课签到管理",
			            "menuJump":"列表",
			            "tableName":"qiandao"
			        }
			    ],
			    "menu":"上课签到管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "审核"
			            ],
			            "menu":"学生请假管理",
			            "menuJump":"列表",
			            "tableName":"qingjia"
			        }
			    ],
			    "menu":"学生请假管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"课程表信息管理",
			            "menuJump":"列表",
			            "tableName":"paike"
			        }
			    ],
			    "menu":"课程表信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"学籍信息管理",
			            "menuJump":"列表",
			            "tableName":"xuejixinxi"
			        }
			    ],
			    "menu":"学籍信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"作业管理",
			            "menuJump":"列表",
			            "tableName":"zuoye"
			        }
			    ],
			    "menu":"作业管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"成绩信息管理",
			            "menuJump":"列表",
			            "tableName":"chengji"
			        }
			    ],
			    "menu":"成绩信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"公告信息管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"公告信息管理"
	        }
	    ],
	    "frontMenu":[],
	    "hasBackLogin":"是",
	    "hasBackRegister":"否",
	    "hasFrontLogin":"否",
	    "hasFrontRegister":"否",
	    "roleName":"教师",
	    "tableName":"jiaoshi"
	}
]
    }
}
export default menu;
