.class public Lcom/dwdbsdk/MessageControl/MessageProtocol$STATE;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/MessageControl/MessageProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATE"
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x67

.field public static final STATE_CONNECTING:I = 0x65

.field public static final STATE_CONNECT_FAIL:I = 0x68

.field public static final STATE_DISCONNECT:I = 0x64

.field public static final STATE_LISTEN:I = 0x66

.field public static final STATE_LOST:I = 0x69

.field public static final STATE_NO_RESPONSE:I = 0x6b

.field public static final STATE_OUT_TIME:I = 0x6a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
