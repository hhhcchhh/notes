.class public Lcom/simdo/dw_db_s/Bean/StepBean;
.super Ljava/lang/Object;
.source "StepBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Bean/StepBean$State;
    }
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private state:I

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->state:I

    .line 12
    iput-object p2, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->time:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->state:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StepBean{state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', info=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/StepBean;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
