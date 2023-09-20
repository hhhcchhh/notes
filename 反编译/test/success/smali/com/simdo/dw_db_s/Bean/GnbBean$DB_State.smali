.class public Lcom/simdo/dw_db_s/Bean/GnbBean$DB_State;
.super Ljava/lang/Object;
.source "GnbBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Bean/GnbBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DB_State"
.end annotation


# static fields
.field public static final GETLOG:I = 0x6

.field public static final JAMING:I = 0x3

.field public static final NONE:I = 0x0

.field public static final PWR_DETECT:I = 0x8

.field public static final READY:I = 0x1

.field public static final REBOOT:I = 0x5

.field public static final START:I = 0x2

.field public static final STOP:I = 0x4

.field public static final UPGRADE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
