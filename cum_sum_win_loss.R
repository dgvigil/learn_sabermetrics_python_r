bool_win_ANA <- as.numeric(grepl("ANA", games$winner))
ANA_w <- cumsum(bool_win_ANA)
bool_loss_ANA <- as.numeric(grepl("ANA", games$loser))
ANA_l <- cumsum(bool_loss_ANA)
bool_win_ARI <- as.numeric(grepl("ARI", games$winner))
ARI_w <- cumsum(bool_win_ARI)
bool_loss_ARI <- as.numeric(grepl("ARI", games$loser))
ARI_l <- cumsum(bool_loss_ARI)
bool_win_ATL <- as.numeric(grepl("ATL", games$winner))
ATL_w <- cumsum(bool_win_ATL)
bool_loss_ATL <- as.numeric(grepl("ATL", games$loser))
ATL_l <- cumsum(bool_loss_ATL)
bool_win_BAL <- as.numeric(grepl("BAL", games$winner))
BAL_w <- cumsum(bool_win_BAL)
bool_loss_BAL <- as.numeric(grepl("BAL", games$loser))
BAL_l <- cumsum(bool_loss_BAL)
bool_win_BOS <- as.numeric(grepl("BOS", games$winner))
BOS_w <- cumsum(bool_win_BOS)
bool_loss_BOS <- as.numeric(grepl("BOS", games$loser))
BOS_l <- cumsum(bool_loss_BOS)
bool_win_CHA <- as.numeric(grepl("CHA", games$winner))
CHA_w <- cumsum(bool_win_CHA)
bool_loss_CHA <- as.numeric(grepl("CHA", games$loser))
CHA_l <- cumsum(bool_loss_CHA)
bool_win_CHN <- as.numeric(grepl("CHN", games$winner))
CHN_w <- cumsum(bool_win_CHN)
bool_loss_CHN <- as.numeric(grepl("CHN", games$loser))
CHN_l <- cumsum(bool_loss_CHN)
bool_win_CIN <- as.numeric(grepl("CIN", games$winner))
CIN_w <- cumsum(bool_win_CIN)
bool_loss_CIN <- as.numeric(grepl("CIN", games$loser))
CIN_l <- cumsum(bool_loss_CIN)
bool_win_CLE <- as.numeric(grepl("CLE", games$winner))
CLE_w <- cumsum(bool_win_CLE)
bool_loss_CLE <- as.numeric(grepl("CLE", games$loser))
CLE_l <- cumsum(bool_loss_CLE)
bool_win_COL <- as.numeric(grepl("COL", games$winner))
COL_w <- cumsum(bool_win_COL)
bool_loss_COL <- as.numeric(grepl("COL", games$loser))
COL_l <- cumsum(bool_loss_COL)
bool_win_DET <- as.numeric(grepl("DET", games$winner))
DET_w <- cumsum(bool_win_DET)
bool_loss_DET <- as.numeric(grepl("DET", games$loser))
DET_l <- cumsum(bool_loss_DET)
bool_win_HOU <- as.numeric(grepl("HOU", games$winner))
HOU_w <- cumsum(bool_win_HOU)
bool_loss_HOU <- as.numeric(grepl("HOU", games$loser))
HOU_l <- cumsum(bool_loss_HOU)
bool_win_KCA <- as.numeric(grepl("KCA", games$winner))
KCA_w <- cumsum(bool_win_KCA)
bool_loss_KCA <- as.numeric(grepl("KCA", games$loser))
KCA_l <- cumsum(bool_loss_KCA)
bool_win_LAN <- as.numeric(grepl("LAN", games$winner))
LAN_w <- cumsum(bool_win_LAN)
bool_loss_LAN <- as.numeric(grepl("LAN", games$loser))
LAN_l <- cumsum(bool_loss_LAN)
bool_win_MIA <- as.numeric(grepl("MIA", games$winner))
MIA_w <- cumsum(bool_win_MIA)
bool_loss_MIA <- as.numeric(grepl("MIA", games$loser))
MIA_l <- cumsum(bool_loss_MIA)
bool_win_MIL <- as.numeric(grepl("MIL", games$winner))
MIL_w <- cumsum(bool_win_MIL)
bool_loss_MIL <- as.numeric(grepl("MIL", games$loser))
MIL_l <- cumsum(bool_loss_MIL)
bool_win_MIN <- as.numeric(grepl("MIN", games$winner))
MIN_w <- cumsum(bool_win_MIN)
bool_loss_MIN <- as.numeric(grepl("MIN", games$loser))
MIN_l <- cumsum(bool_loss_MIN)
bool_win_NYA <- as.numeric(grepl("NYA", games$winner))
NYA_w <- cumsum(bool_win_NYA)
bool_loss_NYA <- as.numeric(grepl("NYA", games$loser))
NYA_l <- cumsum(bool_loss_NYA)
bool_win_NYN <- as.numeric(grepl("NYN", games$winner))
NYN_w <- cumsum(bool_win_NYN)
bool_loss_NYN <- as.numeric(grepl("NYN", games$loser))
NYN_l <- cumsum(bool_loss_NYN)
bool_win_OAK <- as.numeric(grepl("OAK", games$winner))
OAK_w <- cumsum(bool_win_OAK)
bool_loss_OAK <- as.numeric(grepl("OAK", games$loser))
OAK_l <- cumsum(bool_loss_OAK)
bool_win_PHI <- as.numeric(grepl("PHI", games$winner))
PHI_w <- cumsum(bool_win_PHI)
bool_loss_PHI <- as.numeric(grepl("PHI", games$loser))
PHI_l <- cumsum(bool_loss_PHI)
bool_win_PIT <- as.numeric(grepl("PIT", games$winner))
PIT_w <- cumsum(bool_win_PIT)
bool_loss_PIT <- as.numeric(grepl("PIT", games$loser))
PIT_l <- cumsum(bool_loss_PIT)
bool_win_SDN <- as.numeric(grepl("SDN", games$winner))
SDN_w <- cumsum(bool_win_SDN)
bool_loss_SDN <- as.numeric(grepl("SDN", games$loser))
SDN_l <- cumsum(bool_loss_SDN)
bool_win_SEA <- as.numeric(grepl("SEA", games$winner))
SEA_w <- cumsum(bool_win_SEA)
bool_loss_SEA <- as.numeric(grepl("SEA", games$loser))
SEA_l <- cumsum(bool_loss_SEA)
bool_win_SFN <- as.numeric(grepl("SFN", games$winner))
SFN_w <- cumsum(bool_win_SFN)
bool_loss_SFN <- as.numeric(grepl("SFN", games$loser))
SFN_l <- cumsum(bool_loss_SFN)
bool_win_SLN <- as.numeric(grepl("SLN", games$winner))
SLN_w <- cumsum(bool_win_SLN)
bool_loss_SLN <- as.numeric(grepl("SLN", games$loser))
SLN_l <- cumsum(bool_loss_SLN)
bool_win_TBA <- as.numeric(grepl("TBA", games$winner))
TBA_w <- cumsum(bool_win_TBA)
bool_loss_TBA <- as.numeric(grepl("TBA", games$loser))
TBA_l <- cumsum(bool_loss_TBA)
bool_win_TEX <- as.numeric(grepl("TEX", games$winner))
TEX_w <- cumsum(bool_win_TEX)
bool_loss_TEX <- as.numeric(grepl("TEX", games$loser))
TEX_l <- cumsum(bool_loss_TEX)
bool_win_TOR <- as.numeric(grepl("TOR", games$winner))
TOR_w <- cumsum(bool_win_TOR)
bool_loss_TOR <- as.numeric(grepl("TOR", games$loser))
TOR_l <- cumsum(bool_loss_TOR)
bool_win_WAS <- as.numeric(grepl("WAS", games$winner))
WAS_w <- cumsum(bool_win_WAS)
bool_loss_WAS <- as.numeric(grepl("WAS", games$loser))
WAS_l <- cumsum(bool_loss_WAS)
games$ANA_w <- ANA_w
games$ANA_l <- ANA_l
games$ARI_w <- ARI_w
games$ARI_l <- ARI_l
games$ATL_w <- ATL_w
games$ATL_l <- ATL_l
games$BAL_w <- BAL_w
games$BAL_l <- BAL_l
games$BOS_w <- BOS_w
games$BOS_l <- BOS_l
games$CHA_w <- CHA_w
games$CHA_l <- CHA_l
games$CHN_w <- CHN_w
games$CHN_l <- CHN_l
games$CIN_w <- CIN_w
games$CIN_l <- CIN_l
games$CLE_w <- CLE_w
games$CLE_l <- CLE_l
games$COL_w <- COL_w
games$COL_l <- COL_l
games$DET_w <- DET_w
games$DET_l <- DET_l
games$HOU_w <- HOU_w
games$HOU_l <- HOU_l
games$KCA_w <- KCA_w
games$KCA_l <- KCA_l
games$LAN_w <- LAN_w
games$LAN_l <- LAN_l
games$MIA_w <- MIA_w
games$MIA_l <- MIA_l
games$MIL_w <- MIL_w
games$MIL_l <- MIL_l
games$MIN_w <- MIN_w
games$MIN_l <- MIN_l
games$NYA_w <- NYA_w
games$NYA_l <- NYA_l
games$NYN_w <- NYN_w
games$NYN_l <- NYN_l
games$OAK_w <- OAK_w
games$OAK_l <- OAK_l
games$PHI_w <- PHI_w
games$PHI_l <- PHI_l
games$PIT_w <- PIT_w
games$PIT_l <- PIT_l
games$SDN_w <- SDN_w
games$SDN_l <- SDN_l
games$SEA_w <- SEA_w
games$SEA_l <- SEA_l
games$SFN_w <- SFN_w
games$SFN_l <- SFN_l
games$SLN_w <- SLN_w
games$SLN_l <- SLN_l
games$TBA_w <- TBA_w
games$TBA_l <- TBA_l
games$TEX_w <- TEX_w
games$TEX_l <- TEX_l
games$TOR_w <- TOR_w
games$TOR_l <- TOR_l
games$WAS_w <- WAS_w
games$WAS_l <- WAS_l
