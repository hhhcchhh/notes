.class public Lcom/dwdbsdk/Response/DW/GnbStateRsp$devState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Response/DW/GnbStateRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "devState"
.end annotation


# static fields
.field public static final ABNORMAL:I = 0x1

.field public static final NORMAL:I


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Response/DW/GnbStateRsp;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp$devState;->a:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
