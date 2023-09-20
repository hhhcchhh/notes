.class public Lcom/dwdbsdk/Bean/DB/DBProtocol$SOCKET;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Bean/DB/DBProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOCKET"
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_CONNECT_FAIL:I = 0x4

.field public static final STATE_LISTEN:I = 0x1

.field public static final STATE_LOST:I = 0x5

.field public static final STATE_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
