.class public Lcom/dwdbsdk/Bean/DW/HotIpBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->b:Z

    .line 4
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/dwdbsdk/Bean/DW/HotIpBean;

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/dwdbsdk/Bean/DW/HotIpBean;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->c:Z

    return v0
.end method

.method public isSend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->b:Z

    return v0
.end method

.method public setConnect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->c:Z

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->a:Ljava/lang/String;

    return-void
.end method

.method public setSend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/HotIpBean;->b:Z

    return-void
.end method
