.class public Lcom/simdo/dw_db_s/Bean/CityBean;
.super Ljava/lang/Object;
.source "CityBean.java"


# instance fields
.field private arfcnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;",
            ">;"
        }
    .end annotation
.end field

.field private city:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/CityBean;->city:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/simdo/dw_db_s/Bean/CityBean;->arfcnList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArfcnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/CityBean;->arfcnList:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/CityBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public setArfcnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/CityBean;->arfcnList:Ljava/util/List;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/CityBean;->city:Ljava/lang/String;

    return-void
.end method
