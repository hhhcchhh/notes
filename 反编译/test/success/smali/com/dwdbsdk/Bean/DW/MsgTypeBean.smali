.class public Lcom/dwdbsdk/Bean/DW/MsgTypeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->a:Ljava/lang/String;

    const p1, 0xffff

    .line 3
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->b:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->b:I

    return v0
.end method

.method public getTraceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->c:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->a:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->b:I

    return-void
.end method

.method public setTraceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->c:I

    return-void
.end method
