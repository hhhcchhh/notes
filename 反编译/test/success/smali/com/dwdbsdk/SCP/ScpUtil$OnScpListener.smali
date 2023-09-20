.class public interface abstract Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/SCP/ScpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScpListener"
.end annotation


# virtual methods
.method public abstract OnScpConnectFail()V
.end method

.method public abstract OnScpGetLogRsp(Z)V
.end method

.method public abstract OnScpUpgradeFileRsp(Z)V
.end method
