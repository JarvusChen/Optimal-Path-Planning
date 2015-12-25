Optimal-Path-Planning
Powered by Jarvus Chen, 12.25.2015

裡頭包含以下檔案
5x5 最佳化路徑規劃範例
     │── optimalpath5.m：最佳化路徑規劃範例GUI
     │── optimalpath5.fig：圖像介面


9x9 完整系統，包含：從照片讀取地圖資訊、設計最佳路徑、將路徑轉換成給Arduino的指令
     │── optimalpath9.m：完整系統GUI
     │── optimalpath9.fig：圖像介面


副程式
     │── map2barr9.m：解析照片資訊，藉由顏色讀出起點與障礙物
     │── sortnow.m：修正關係表，排除重複
     │── sortorder.m：修正關係表，將每次處理的點從近到遠排序
     │── finalpath.m：透過關係表，將路徑取出來
     │── pathtoorder9.m：將路徑轉換成給Arduino的指令


指令傳給Arduino後的行為
     │── orders.ino：接收Matlab的指令，並讓機器車移動


使用說明請參考此頁面下方
專題：最佳化路徑規畫
http://jarvus.comuf.com/proCACS.php