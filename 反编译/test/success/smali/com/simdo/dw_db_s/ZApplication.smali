.class public Lcom/simdo/dw_db_s/ZApplication;
.super Landroid/app/Application;
.source "ZApplication.java"


# static fields
.field private static instance:Lcom/simdo/dw_db_s/ZApplication;


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/simdo/dw_db_s/ZApplication;
    .locals 1

    .line 19
    sget-object v0, Lcom/simdo/dw_db_s/ZApplication;->instance:Lcom/simdo/dw_db_s/ZApplication;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/simdo/dw_db_s/ZApplication;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    iput-object p0, p0, Lcom/simdo/dw_db_s/ZApplication;->_context:Landroid/content/Context;

    .line 15
    sput-object p0, Lcom/simdo/dw_db_s/ZApplication;->instance:Lcom/simdo/dw_db_s/ZApplication;

    return-void
.end method
