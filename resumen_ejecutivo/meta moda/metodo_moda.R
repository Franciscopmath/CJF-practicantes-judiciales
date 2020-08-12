ct_TU_AUX_62_256<-read.csv("TU AUX 62-256.csv", header = T)
corid_TU_AUX_62_256<-colnames(ct_TU_AUX_62_256)
nm<-dim(ct_TU_AUX_62_256)
n<-nm[2]
modamayor<-rep(0,n)
for (i in 1:n){

 Tfabs<-table(ct_TU_AUX_62_256[,i])
 n<-max(Tfabs)
 indi<-which(Tfabs==n)
modamayor[i]<-max(as.numeric(row.names(Tfabs)[indi]))
}
TU_AUX_moda<-rbind(corid_TU_AUX_62_256,modamayor)
write.table(t(TU_AUX_moda),"tu_aux_moda_256.txt")
