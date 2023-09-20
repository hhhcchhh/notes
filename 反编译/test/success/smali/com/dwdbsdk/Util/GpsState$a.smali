.class public Lcom/dwdbsdk/Util/GpsState$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Util/GpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final synthetic c:Lcom/dwdbsdk/Util/GpsState;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Util/GpsState;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Util/GpsState$a;->c:Lcom/dwdbsdk/Util/GpsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dwdbsdk/Util/GpsState$a;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/dwdbsdk/Util/GpsState$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Util/GpsState$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Util/GpsState$a;->b:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/GpsState$a;->a:Ljava/lang/String;

    return-object v0
.end method
