.class public Lcom/dwdbsdk/Bean/DW/DWProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Bean/DW/DWProtocol$TraceType;,
        Lcom/dwdbsdk/Bean/DW/DWProtocol$DualCell;,
        Lcom/dwdbsdk/Bean/DW/DWProtocol$CellId;,
        Lcom/dwdbsdk/Bean/DW/DWProtocol$FrameType;
    }
.end annotation


# static fields
.field public static final EXT_GPIO_CNT:I = 0x8

.field public static final MAX_BLACK_IMSI_NUM:I = 0x64

.field public static final MAX_DROP_SAVE_IMSI:I = 0x14

.field public static final MAX_IMSI_LEN:I = 0x10

.field public static final MAX_IMSI_USE_LEN:I = 0xf

.field public static final MAX_TAC_NUM:I = 0x6

.field public static final MAX_TARGET_UE_NUM:I = 0x3

.field public static final OAM_ACK_ERROR:I = 0x1

.field public static final OAM_ACK_E_ASYNC_FAIL:I = 0x6

.field public static final OAM_ACK_E_BUSY:I = 0x3

.field public static final OAM_ACK_E_GPS_UNLOCK:I = 0x7

.field public static final OAM_ACK_E_HW_CFG_FAIL:I = 0x8

.field public static final OAM_ACK_E_PARAM:I = 0x2

.field public static final OAM_ACK_E_SYS_STATE:I = 0x5

.field public static final OAM_ACK_E_TRANSFER:I = 0x4

.field public static final OAM_ACK_OK:I = 0x0

.field public static final OAM_MSG_ADJUST_TX_ATTEN:I = 0xd2

.field public static final OAM_MSG_CFG_PA_TRX:I = 0xed

.field public static final OAM_MSG_FAN_AUTO_CFG:I = 0xe9

.field public static final OAM_MSG_FREQ_SCAN_REPORT:I = 0xe3

.field public static final OAM_MSG_FWD_UDP_INFO:I = 0xe7

.field public static final OAM_MSG_GET_CATCH_CFG:I = 0xdc

.field public static final OAM_MSG_GET_FTP_SERVER:I = 0xcc

.field public static final OAM_MSG_GET_GPIO_MODE:I = 0xce

.field public static final OAM_MSG_GET_GPS_CFG:I = 0xec

.field public static final OAM_MSG_GET_GPS_IO_CFG:I = 0xe1

.field public static final OAM_MSG_GET_METH_CFG:I = 0xca

.field public static final OAM_MSG_GET_SYS_INFO:I = 0xd0

.field public static final OAM_MSG_GET_SYS_LOG:I = 0xd7

.field public static final OAM_MSG_I2C_RW:I = 0xf0

.field public static final OAM_MSG_RW_USER_DATA:I = 0xf2

.field public static final OAM_MSG_SET_BT_NAME:I = 0xc9

.field public static final OAM_MSG_SET_DUAL_CELL:I = 0xd4

.field public static final OAM_MSG_SET_FAN_SPEED:I = 0xd8

.field public static final OAM_MSG_SET_FTP_SERVER:I = 0xcd

.field public static final OAM_MSG_SET_GPIO_MODE:I = 0xcf

.field public static final OAM_MSG_SET_GPS_CFG:I = 0xd3

.field public static final OAM_MSG_SET_GPS_IO_CFG:I = 0xe0

.field public static final OAM_MSG_SET_JAM_ARFCN:I = 0xe5

.field public static final OAM_MSG_SET_METH_CFG:I = 0xcb

.field public static final OAM_MSG_SET_RX_GAIN:I = 0xd6

.field public static final OAM_MSG_SET_SYS_INFO:I = 0xd1

.field public static final OAM_MSG_START_BAND_SCAN:I = 0xe8

.field public static final OAM_MSG_START_FREQ_SCAN:I = 0xe2

.field public static final OAM_MSG_START_TD_MEASURE:I = 0xe6

.field public static final OAM_MSG_STOP_FREQ_SCAN:I = 0xe4

.field public static final OAM_STR_MAX:I = 0x20

.field public static final UI_2_eNB_START_CONTROL:I = 0x82

.field public static final UI_2_eNB_STOP_CONTROL:I = 0x83

.field public static final UI_2_gNB_CFG_gNB:I = 0xa

.field public static final UI_2_gNB_DELETE_OP_LOG_REQ:I = 0x7

.field public static final UI_2_gNB_GET_LOG_REQ:I = 0x4

.field public static final UI_2_gNB_GET_OP_LOG_REQ:I = 0x6

.field public static final UI_2_gNB_HEART_BEAT:I = 0x1

.field public static final UI_2_gNB_LTE_CFG_gNB:I = 0x6e

.field public static final UI_2_gNB_OAM_MSG:I = 0x3e8

.field public static final UI_2_gNB_QUERY_gNB_VERSION:I = 0x12

.field public static final UI_2_gNB_REBOOT_gNB:I = 0x11

.field public static final UI_2_gNB_SET_BLACK_UE_LIST:I = 0xb

.field public static final UI_2_gNB_SET_TIME:I = 0x9

.field public static final UI_2_gNB_SET_TX_POWER_OFFSET:I = 0xc

.field public static final UI_2_gNB_START_CATCH:I = 0xd

.field public static final UI_2_gNB_START_CONTROL:I = 0x1e

.field public static final UI_2_gNB_START_LTE_BLACK_UE_LIST:I = 0x6f

.field public static final UI_2_gNB_START_LTE_TRACE:I = 0x73

.field public static final UI_2_gNB_START_TRACE:I = 0xf

.field public static final UI_2_gNB_STOP_CATCH:I = 0xe

.field public static final UI_2_gNB_STOP_CONTROL:I = 0x1f

.field public static final UI_2_gNB_STOP_LTE_TRACE:I = 0x74

.field public static final UI_2_gNB_STOP_TRACE:I = 0x10

.field public static final UI_2_gNB_VERSION_UPGRADE:I = 0x3

.field public static final UI_2_gNB_WIFI_CFG:I = 0x14

.field public static final UI_2_gNB_WRITE_OP_RECORD:I = 0x5

.field public static final UI_NONE:I = 0xffff

.field public static final XMSG_T_OAM_APK:I = 0x31

.field public static final XMSG_T_OAM_BT:I = 0x32

.field public static final XMSG_T_OAM_CFG:I = 0x30

.field public static final XMSG_T_OAM_CGI:I = 0x33

.field public static final XMSG_T_OAM_METH:I = 0x34

.field public static final gNB_2_UI_REPORT_LTE_UE_INFO:I = 0xcb

.field public static final gNB_2_UI_REPORT_UE_INFO:I = 0x67


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
