.class public final synthetic Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dwdbsdk/Response/DW/GnbStateRsp;


# direct methods
.method public synthetic constructor <init>(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda2;->f$0:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda2;->f$0:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->lambda$onDWHeartStateRsp$2(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    return-void
.end method
