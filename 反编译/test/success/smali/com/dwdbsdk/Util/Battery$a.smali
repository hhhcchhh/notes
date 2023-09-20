.class public Lcom/dwdbsdk/Util/Battery$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Util/Battery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/dwdbsdk/Util/Battery;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Util/Battery$a;->c:Lcom/dwdbsdk/Util/Battery;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/dwdbsdk/Util/Battery$a;->a:I

    .line 4
    iput-object p3, p0, Lcom/dwdbsdk/Util/Battery$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Util/Battery$a;->a:I

    return v0
.end method
