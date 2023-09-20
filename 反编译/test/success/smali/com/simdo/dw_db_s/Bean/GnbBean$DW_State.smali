.class public Lcom/simdo/dw_db_s/Bean/GnbBean$DW_State;
.super Ljava/lang/Object;
.source "GnbBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Bean/GnbBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DW_State"
.end annotation


# static fields
.field public static final BLACKLIST:I = 0x1

.field public static final CATCH:I = 0x5

.field public static final CFG_TRACE:I = 0x3

.field public static final CHANGE_WORK_MODE:I = 0xc

.field public static final CONTROL:I = 0x6

.field public static final FREQ_SCAN:I = 0xd

.field public static final GETOPLOG:I = 0xe

.field public static final GET_LOG:I = 0x9

.field public static final GNB_CFG:I = 0x2

.field public static final IDLE:I = 0x0

.field public static final NONE:I = -0x1

.field public static final PHY_ABNORMAL:I = 0xb

.field public static final REBOOT:I = 0xa

.field public static final STOP:I = 0x7

.field public static final TRACE:I = 0x4

.field public static final UPDATE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
