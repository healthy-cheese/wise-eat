<template>
	<view>
		<view class="fixed">
			<cu-custom :isBack="true" bgColor="bg-shadeTop text-white">
				<block slot="backText">返回</block>
				<block slot="content">动态详情</block>
			</cu-custom>
		</view>
		<view class="bg-white padding-sm">
			<view class="flex align-center justify-between margin-bottom-sm">
				<view class="flex align-center">
					<view class="margin-right-sm">
						<image class="lg cu-avatar round" src="../../static/images/test/testCat.png" mode=""></image>
					</view>
					<view class="text-lg text-black">
						<text>我只是一只小杰瑞</text>
					</view>
				</view>
				<view class="cu-btn bg-yellow round shadow button-hover text-white text-bold">加关注</view>
			</view>
			<!-- 文字 -->
			<view class="margin-sm">
				环球时报-环球网报道 记者 倪浩】商务部新闻发言人高峰24日表示，北京市商务局已经收到北京字节跳动公司提交的技术出口许可申请。
				在24日下午举行的新闻发布会上，有媒体据字节跳动公司发表声明称，根据《中华人民共和国技术进出口管理条例》和《中国禁止出口限制出口技术目录》规定，已经向北京市商务局提交了许可申请，正在等待北京市商务局的受理决定。请问商务部能否证实？申请能否被批准？
				对。
			</view>
			<!-- 图片 -->
			<view class="grid col-3 grid-square">
				<view class="">
					<image src="../../static/images/test/testCat.png" style="height: 200rpx;" mode="aspectFill"></image>
				</view>
				<view class="">
					<image src="../../static/images/test/rice.png" style="height: 200rpx;" mode="aspectFill"></image>
				</view>
				<view class="">
					<image src="../../static/images/test/testCat.png" style="height: 200rpx;" mode="aspectFill"></image>
				</view>
				<view class="">
					<image src="../../static/images/test/testCat.png" style="height: 200rpx;" mode="aspectFill"></image>
				</view>
			</view>
			<view class="flex justify-between">
				<view class="">
					<text>2020.12.3</text>
					发布
				</view>
				<view class="">
					<text class="cuIcon-like text-red">32</text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		methods: {
			
		}
	}
</script>

<style>

</style>
