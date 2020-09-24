<template>
	<view class="wrapper">
		
		<!-- tab选项单元 -->
		<view class="tab-box">
			<!-- 使用列表循环生成多个tab选项，并绑定点击事件 -->
			<text v-for="(item, index) in tabItem" :key="index" :class="`tab-item ${item.selfClass} ${item.selectedClass}`" @click="tabChange($event, index)">{{item.content}}</text>
		</view>
		
		<!-- tab控制的切换页面-->
		<swiper :current="tabPage.currentPage" @change="currentChange" :style="`height:${swiperHeight}px`">
			<swiper-item>
				<view class="item-wrapper item-wrapper0">
					<!-- 以下存放每个页面的具体内容，下面是一个示例 -->
					<form action="">
						<input type="text"
								name="username" 
								placeholder="请输入用户名/手机号"
								class="u-input">
						<input type="text" password="true" placeholder="请输入密码" class="p-input">
						<button class="sign-btn login-btn">登录</button>
					</form>
				</view>
			</swiper-item>
			<swiper-item>
				<view class="item-wrapper item-wrapper1">
					<form action="">
						<input type="number"
								name="username" 
								placeholder="请输入手机号"
								class="u-input">
						<input type="number" placeholder="请输入验证码" class="verify-code">
						<input type="text" password="true" placeholder="请输入密码" class="p-input">
						<button class="sign-btn signup-btn">注册</button>
					</form>
				</view>
			</swiper-item>
		</swiper>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				swiperHeight:213,  //保存了swiper的高度
				tabPage:{  //记录现在的页号和上一个页号
					lastPage:0,  //上一页的页号
					currentPage:0,  //这一页的页号
				},
				tabItem:[  //每个tab选项单元的内容，用于进行列表渲染，想要添加几个tab,就在增加数组元素
					{
						selfClass:'tab-login',  //每个tab自己单独的class
						selectedClass:'tab-selected',  //选中的class
						content:'登录'  //tab选项单元展示的内容
					},
					{
						selfClass:'tab-signup',
						selectedClass:'',
						content:'注册'
					}
				]
			}
		},
		methods: {
			
			//tab被点击后触发的事件
			tabChange(e, index){
				this.tabPage.currentPage = index;
			},  
			
			//当swiper切换后触发的事件
			currentChange(e){
				let lastIdx = this.tabPage.lastPage;
				let idx = e.detail.current;
				this.tabPage.currentPage = idx;
				this.tabPage.lastPage = idx;
				this.tabItem[lastIdx].selectedClass = '';
				this.tabItem[idx].selectedClass = 'tab-selected';
				//因为uniapp中的swiper高度是固定的，因此这句话是为了根据切换出的页面自适应的更改swiper的高度，避免内容超出swiper高度而不显示
				this.setSwiperHeight('.item-wrapper'+idx, this);
			},
			
			//设置swiper的高度, selector是需要选择的swiper-item
			setSwiperHeight(selector, that){
			    let info = uni.createSelectorQuery().in(that).select(selector);
			    info.boundingClientRect(function(data) { //data - 各种参数
			        if(data != null){
						that.swiperHeight = data.height; //设置swiper的高度
			        }
					else{
			            setTimeout(function(){
			               that.setSwiperHeight(selector, that);
			            },300)
			        }
			    }).exec()
			}
		}
	}
</script>

<!-- 需要配合scss插件，$cheese-maincolor-dark是定义在uni.scss里的一个颜色变量 -->
<style lang="scss">
	page{
		width:100%;
		height:100%;
		background-color: #ffffff;
	}
	.wrapper{
		width:100%;
		height:100%;
		display:flex;
		flex-direction:column;
		align-items: center;
		justify-content: center;
	}
	
	#title{
		font-size:60rpx;
		margin-bottom:100rpx;
	}
	
	.tab-item{
		display:inline-block;
		text-align: center;
		width:140rpx;
		padding-bottom:16rpx;
		font-size:40rpx;
		border-bottom:4rpx solid #eeeeee;
	}
	
	.tab-selected{
		color:$cheese-maincolor-dark;
		border-bottom:4rpx solid $cheese-maincolor-dark;
	}
	
	
	swiper{
		width:600rpx;
		height:500rpx;
		margin-top:100rpx;
	}
	
	.item-wrapper{
		width:100%;
	}
	
	input{
		width:100%;
		font-size:36rpx;
		padding-bottom:30rpx;
		border-bottom:0.5px solid #bbbbbb;
		
	}
	.p-input, .verify-code{
		margin-top:40rpx;
	}
	
	.sign-btn{
		background:linear-gradient(to bottom, $cheese-maincolor-light, $cheese-maincolor-dark);
		border-radius: 60rpx;
		color:#fff;
		margin-top:100rpx;
		outline:none;
	}
	
	.sign-btn:after{
		border:0;
	}
</style>
