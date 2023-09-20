.class public Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;
.super Ljava/lang/Object;
.source "ArfcnTimingOffset.java"


# instance fields
.field private arfcn:Ljava/lang/String;

.field private timingOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->timingOffset:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->arfcn:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->timingOffset:I

    return-void
.end method


# virtual methods
.method public getArfcn()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->arfcn:Ljava/lang/String;

    return-object v0
.end method

.method public getTimingOffset()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->timingOffset:I

    return v0
.end method

.method public setArfcn(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->arfcn:Ljava/lang/String;

    return-void
.end method

.method public setTimingOffset(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->timingOffset:I

    return-void
.end method
