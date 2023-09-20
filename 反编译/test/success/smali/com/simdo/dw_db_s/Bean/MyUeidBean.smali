.class public Lcom/simdo/dw_db_s/Bean/MyUeidBean;
.super Ljava/lang/Object;
.source "MyUeidBean.java"


# instance fields
.field private firstChecked:Z

.field private mUeidBean:Lcom/dwdbsdk/Bean/UeidBean;

.field private name:Ljava/lang/String;

.field private secondChecked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dwdbsdk/Bean/UeidBean;ZZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->mUeidBean:Lcom/dwdbsdk/Bean/UeidBean;

    .line 15
    iput-boolean p3, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->firstChecked:Z

    .line 16
    iput-boolean p4, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->secondChecked:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUeidBean()Lcom/dwdbsdk/Bean/UeidBean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->mUeidBean:Lcom/dwdbsdk/Bean/UeidBean;

    return-object v0
.end method

.method public isFirstChecked()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->firstChecked:Z

    return v0
.end method

.method public isSecondChecked()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->secondChecked:Z

    return v0
.end method

.method public setFirstChecked(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->firstChecked:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSecondChecked(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->secondChecked:Z

    return-void
.end method

.method public setmUeidBean(Lcom/dwdbsdk/Bean/UeidBean;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/MyUeidBean;->mUeidBean:Lcom/dwdbsdk/Bean/UeidBean;

    return-void
.end method
