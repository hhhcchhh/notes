.class Lcom/dwdbsdk/Bean/DW/PwrCtl$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Bean/DW/PwrCtl;->Lte(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Bean/DW/PwrCtl;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/PwrCtl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/PwrCtl$1;->a:Lcom/dwdbsdk/Bean/DW/PwrCtl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/dwdbsdk/Native/Native;->SetModulePwr(II)Z

    return-void
.end method
