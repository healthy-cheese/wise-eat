<!-- 首页 -->
<template>
	<view class="">
		<view class="center-data text-center bg-white data-container">
			<view class=" padding-lg">
				<view class="text-lg text-bold text-black text-center text-shadow margin-bottom-sm">
					本日健康数据
				</view>
				<view class="cu-btn line-orange round sm shadow data-button" type="default">
					查看报表
					<text class="cuIcon-right lg text-orange"></text>
				</view>
				<view class="flex justify-center ">
				    <circle-percent class="justify-center" bg="#fbb800"  percent="60"></circle-percent>
				</view>
			</view>
			<view class="left-data">
				<view class="text-xl text-green text-bold text-shadow">
					323
				</view>
				<view class="">
					摄入(Kcal)
				</view>
			</view>
			<view class="right-data">
				<view class="text-xl text-blue text-bold text-shadow">
					231
				</view>
				<view class="">
					消耗(Kcal)
				</view>
			</view>
			<view class="flex justify-around bg-orange padding radius text-center light data-detail">
				<view class="">
					<view class="text-lg text-bold">
						32
					</view>
					<view class="">
						蛋白质(g)
					</view>
				</view>
				<view class="">
					<view class="text-lg text-bold">
						382
					</view>
					<view class="">
						碳水化物(g)
					</view>
				</view>
				<view class="">
					<view class="text-lg text-bold">
						192
					</view>
					<view class="">
						油脂(g)
					</view>
				</view>
			</view>
		</view>
		<!-- 热点文章 -->
		<view class="margin-top-sm">
			<view class="bg-white padding-sm solids-bottom" @click="toArticalDetail">
				<view class="text-bold text-lg">
					<text>饮食的艺术 ｜ 颠覆你的想象</text>
				</view>
				<view class="flex">
					<view class="margin-right-sm">
						<image src="../../static/images/tabbar/camara.png" style="width: 100rpx;height: 100rpx;" mode=""></image>
					</view>
					<view class="">
						<text class="text-sm margin-top-sm text-detail">酱料在上桌前淋在饭上。滋滋的响声过后，焦香入味的米粒混着四溢的腊香袭来，这才叫作煲仔，焦香入味的米粒混着四溢的腊香袭来，这才叫作煲仔</text>
					</view>
				</view>
			</view>
		</view>
	</view>
	
</template>

<script>
	import circlePercent from '@/components/circle-percent/circle-percent'
	export default {
		data() {
			
		},
		onLoad() {
			
		},
		methods: {
			
		}
	}
</script>

<style>
	/* 智食数据 */
	.data-container{
		background: url(../../static/images/test/bg-fruit.png);
		background-size: 300rpx,600rpx;
		
	}
	.center-data{
		position: relative;
	}
	.left-data{
		position: absolute;
		top:250rpx;
		left:30rpx;
		transform: skew(-10deg, 0deg);
	}
	.right-data{
		position: absolute;
		top:250rpx;
		right: 30rpx;
		transform: skew(-10deg, 0deg);
	}
	.data-button{
		position: absolute;
		top:40rpx;
		right:50rpx;
	}
	.data-detail{
		opacity: 0.8;
		border-radius: 20px 20px 0 0;
	}
	/* 推荐文章	 */
	.text-detail{
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;// 限制快级元素的文本行数
		overflow: hidden;
		text-overflow:ellipsis;
		-o-text-overflow:ellipsis;
	}
</style>
