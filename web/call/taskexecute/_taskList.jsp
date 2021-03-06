<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div data-options="fit:true" class="easyui-layout">
			<!-- 查询区部分 -->
			<div data-options="region:'north',split:true,border:true" style="height:70px">
				<table>
								<tr>
									<td>项目名称</td>
									<td>
										<input width="30" id="taskName" name="taskName" class="easyui-textbox"/>
										
										<!-- 任务类型字段：1为普通外呼任务，2为自动外呼任务 -->
										<input width="30" id="taskType" name="taskType" value="1" style="display:none;" class="easyui-validatebox"/>
									</td>
								</tr>
								<tr>
									<td>开始时间</td>
									<td>
										<input id="startTime" width="30" name="startTime" class="easyui-datebox" />
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										结束时间</td>
									<td>
										<input id="endTime" width="30" name="endTime" class="easyui-datebox" />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="javascript:findData()"  class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
									</td>
								</tr>
							</table>
			</div>
			<!-- 编辑区下半部分列表 -->
			<div data-options="region:'center',split:true,border:false">
					<table id="callTaskDg">
							<thead>  
								<tr style="height:12px;">                
									<th data-options="field:'TASK_NAME',width:240,align:'center'">任务名称</th>                
									<th data-options="field:'CALLERID',width:150,align:'center'">主叫号码</th>
									<th data-options="field:'CREATE_TIME',width:150,align:'center'">创建时间</th>
									<th data-options="field:'TELEPHONE_COUNT',width:120,align:'center'">号码总量</th>
									<th data-options="field:'NOCALL_COUNT',width:120,align:'center',formatter:nocallformatter">未呼量</th>
									<th data-options="field:'SUCCESS_COUNT',width:120,align:'center'">呼叫成功</th>
									<th data-options="field:'FAILURE_COUNT',width:120,align:'center'">呼叫失败</th>
									<th data-options="field:'id',width:90,align:'center',formatter:rowformatter">操作</th>                
								</tr>        
							</thead>
					</table>					
	
			</div>
	</div>
