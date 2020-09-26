<template>
	<view class="">
		<view class="fixed">
			<cu-custom :isBack="true" bgColor="bg-shadeTop text-white">
				<block slot="backText">返回</block>
				<block slot="content">稀饭</block>
			</cu-custom>
		</view>
		<view class="bg-white padding-lg justify-start flex">
			<view class="bg-white margin-right-sm">
				<image class="round" src="../../static/images/test/rice.png" style="width: 100rpx;height: 100rpx;" mode=""></image>
			</view>
			<view class="">
				<view class="text-xl">
					稀饭
				</view>
				<view class="">
					<text class="text-xxl">59千卡</text>
					<text>/100克</text>
				</view>
			</view>
		</view>
		<view class="bg-white margin-top-sm padding-lg shadow-warp">
			<view class="flex justify-between solids-bottom padding-tb-sm text-gray">
				<view class="">
					营养元素
				</view>
				<view class="">
					每100g
				</view>
			</view>
			<view class="flex justify-between solids-bottom padding-tb-sm">
				<view class="">
					热量
				</view>
				<view class="">
					<text>59.0</text>
					千卡
				</view>
			</view>
			<view class="flex justify-between solids-bottom padding-tb-sm">
				<view class="">
					碳水化合物
				</view>
				<view class="">
					<text>13.4</text>
					克
				</view>
			</view>
			<view class="flex justify-between solids-bottom padding-tb-sm">
				<view class="">
					蛋白质
				</view>
				<view class="">
					<text>1.3</text>
					克
				</view>
			</view>
			<view class="flex justify-between padding-tb-sm">
				<view class="">
					脂肪
				</view>
				<view class="">
					<text>13.4</text>
					克
				</view>
			</view>
		</view>
	</view>
</template>

<script>
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
</style>
