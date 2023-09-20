.class public Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;->a:I

    .line 3
    iput p2, p0, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;->b:I

    return-void
.end method


# virtual methods
.method public getArfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;->a:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;->b:I

    return v0
.end method

.method public setArfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;->a:I

    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;->b:I

    return-void
.end method
