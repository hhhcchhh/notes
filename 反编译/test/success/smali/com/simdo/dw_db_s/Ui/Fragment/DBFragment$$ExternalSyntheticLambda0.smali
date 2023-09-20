.class public final synthetic Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field public final synthetic f$1:Lcom/dwdbsdk/Response/DB/MsgStateRsp;


# direct methods
.method public synthetic constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;->f$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;->f$1:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;->f$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;->f$1:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->$r8$lambda$GX9Fe3_obxR74gEM9ghxaatkCLo(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    return-void
.end method
