.class Lmokee/externalviews/KeyguardExternalViewProviderService$1;
.super Lmokee/externalviews/IExternalViewProviderFactory$Stub;
.source "KeyguardExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/KeyguardExternalViewProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalViewProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/KeyguardExternalViewProviderService;

    .prologue
    .line 105
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$1;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-direct {p0}, Lmokee/externalviews/IExternalViewProviderFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 107
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lmokee/externalviews/KeyguardExternalViewProviderService$1$1;

    invoke-direct {v2, p0, p1}, Lmokee/externalviews/KeyguardExternalViewProviderService$1$1;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$1;Landroid/os/Bundle;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 114
    .local v0, "c":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/os/IBinder;>;"
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$1;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    const/4 v2, 0x0

    return-object v2
.end method
