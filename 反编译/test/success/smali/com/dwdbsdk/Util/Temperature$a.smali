.class public Lcom/dwdbsdk/Util/Temperature$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Util/Temperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public final synthetic c:Lcom/dwdbsdk/Util/Temperature;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Util/Temperature;Ljava/lang/String;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Util/Temperature$a;->c:Lcom/dwdbsdk/Util/Temperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dwdbsdk/Util/Temperature$a;->a:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lcom/dwdbsdk/Util/Temperature$a;->b:D

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/Temperature$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/dwdbsdk/Util/Temperature$a;->b:D

    return-void
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/dwdbsdk/Util/Temperature$a;->b:D

    return-wide v0
.end method
