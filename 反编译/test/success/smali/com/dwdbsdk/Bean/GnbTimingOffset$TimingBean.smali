.class public Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Bean/GnbTimingOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimingBean"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/dwdbsdk/Bean/GnbTimingOffset;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->e:Lcom/dwdbsdk/Bean/GnbTimingOffset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->a:I

    .line 3
    iput p3, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->b:I

    .line 4
    iput p4, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->c:I

    .line 5
    iput p5, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->d:I

    return-void
.end method


# virtual methods
.method public getArfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->a:I

    return v0
.end method

.method public getK1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->c:I

    return v0
.end method

.method public getK2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->d:I

    return v0
.end method

.method public getTimingOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->b:I

    return v0
.end method

.method public setArfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->a:I

    return-void
.end method

.method public setK1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->c:I

    return-void
.end method

.method public setK2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->d:I

    return-void
.end method

.method public setTimingOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->b:I

    return-void
.end method
