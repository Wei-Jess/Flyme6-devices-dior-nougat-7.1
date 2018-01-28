.class Lmokee/externalviews/ExternalViewProviderService$1;
.super Lmokee/externalviews/IExternalViewProviderFactory$Stub;
.source "ExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/ExternalViewProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/ExternalViewProviderService;


# direct methods
.method constructor <init>(Lmokee/externalviews/ExternalViewProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/ExternalViewProviderService;

    .prologue
    .line 63
    iput-object p1, p0, Lmokee/externalviews/ExternalViewProviderService$1;->this$0:Lmokee/externalviews/ExternalViewProviderService;

    invoke-direct {p0}, Lmokee/externalviews/IExternalViewProviderFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 65
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lmokee/externalviews/ExternalViewProviderService$1$1;

    invoke-direct {v2, p0, p1}, Lmokee/externalviews/ExternalViewProviderService$1$1;-><init>(Lmokee/externalviews/ExternalViewProviderService$1;Landroid/os/Bundle;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 71
    .local v0, "c":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/os/IBinder;>;"
    iget-object v2, p0, Lmokee/externalviews/ExternalViewProviderService$1;->this$0:Lmokee/externalviews/ExternalViewProviderService;

    invoke-static {v2}, Lmokee/externalviews/ExternalViewProviderService;->-get0(Lmokee/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ExternalViewProvider"

    const-string/jumbo v3, "error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v2, 0x0

    return-object v2
.end method
