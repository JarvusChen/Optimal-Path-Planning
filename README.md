# Optimal-Path-Planning

裡頭包含以下檔案<br>
5x5 最佳化路徑規劃範例<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── optimalpath5.m：最佳化路徑規劃範例GUI<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── optimalpath5.fig：圖像介面<br><br>
							
9x9 完整系統，包含：從照片讀取地圖資訊、設計最佳路徑、將路徑轉換成給Arduino的指令<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── optimalpath9.m：完整系統GUI<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── optimalpath9.fig：圖像介面<br><br>

副程式<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── map2barr9.m：解析照片資訊，藉由顏色讀出起點與障礙物<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── sortnow.m：修正關係表，排除重複<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── sortorder.m：修正關係表，將每次處理的點從近到遠排序<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── finalpath.m：透過關係表，將路徑取出來<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── pathtoorder9.m：將路徑轉換成給Arduino的指令<br><br>

指令傳給Arduino後的行為<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│── orders.ino：接收Matlab的指令，並讓機器車移動<br><br>

使用說明請參考此頁面下方
<a href="http://www.jarvus.net/project/proCACS.php" target=blank>專題：最佳化路徑規畫</a>
