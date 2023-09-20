.class public Lcom/dwdbsdk/Bean/DB/DBProtocol$MsgType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Bean/DB/DBProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgType"
.end annotation


# static fields
.field public static final BT_MSG_DEV_NAME:I = 0x9

.field public static final GR_MSG_BT_NAME:I = 0x4

.field public static final GR_MSG_DATA_FWD:I = 0x12d

.field public static final GR_MSG_GET_JAM:I = 0x22

.field public static final GR_MSG_GET_LOG:I = 0x8

.field public static final GR_MSG_GET_VERSION:I = 0x3

.field public static final GR_MSG_GPIO_CFG:I = 0x41

.field public static final GR_MSG_HELLO:I = 0x1

.field public static final GR_MSG_IMG_UPGRADE:I = 0x7

.field public static final GR_MSG_POWER_REPORT:I = 0x35

.field public static final GR_MSG_REBOOT:I = 0x6

.field public static final GR_MSG_RX_GAIN:I = 0x40

.field public static final GR_MSG_SCAN_REPORT:I = 0x34

.field public static final GR_MSG_SET_TIME:I = 0x2

.field public static final GR_MSG_START_JAM:I = 0x20

.field public static final GR_MSG_START_POS_SCAN:I = 0x30

.field public static final GR_MSG_START_PWR_SCAN:I = 0x32

.field public static final GR_MSG_START_SG:I = 0x23

.field public static final GR_MSG_STOP_JAM:I = 0x21

.field public static final GR_MSG_STOP_PWR_SCAN:I = 0x33

.field public static final GR_MSG_STOP_SG:I = 0x24

.field public static final GR_MSG_WIFI_CFG:I = 0x5

.field public static final GR_NONE:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
