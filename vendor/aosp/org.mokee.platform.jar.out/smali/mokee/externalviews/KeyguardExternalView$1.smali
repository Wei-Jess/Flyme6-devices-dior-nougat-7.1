.class Lmokee/externalviews/KeyguardExternalView$1;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/KeyguardExternalView;

    .prologue
    .line 111
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 115
    :try_start_0
    invoke-static {p2}, Lmokee/externalviews/IExternalViewProviderFactory$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/externalviews/IExternalViewProviderFactory;

    move-result-object v1

    .line 116
    .local v1, "factory":Lmokee/externalviews/IExternalViewProviderFactory;
    if-eqz v1, :cond_2

    .line 117
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    .line 118
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lmokee/externalviews/IExternalViewProviderFactory;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    .line 117
    invoke-static {v3}, Lmokee/externalviews/IKeyguardExternalViewProvider$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lmokee/externalviews/KeyguardExternalView;->-set0(Lmokee/externalviews/KeyguardExternalView;Lmokee/externalviews/IKeyguardExternalViewProvider;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    .line 119
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v3}, Lmokee/externalviews/KeyguardExternalView;->-get4(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v3

    .line 120
    invoke-interface {v2, v3}, Lmokee/externalviews/IKeyguardExternalViewProvider;->registerCallback(Lmokee/externalviews/IKeyguardExternalViewCallbacks;)V

    .line 122
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2, p2}, Lmokee/externalviews/KeyguardExternalView;->-set2(Lmokee/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 123
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-get5(Lmokee/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 124
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-wrap0(Lmokee/externalviews/KeyguardExternalView;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "factory":Lmokee/externalviews/IExternalViewProviderFactory;
    :goto_0
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-get5(Lmokee/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_0

    .line 136
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-get2(Lmokee/externalviews/KeyguardExternalView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v3}, Lmokee/externalviews/KeyguardExternalView;->-get6(Lmokee/externalviews/KeyguardExternalView;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    :cond_0
    return-void

    .line 126
    .restart local v1    # "factory":Lmokee/externalviews/IExternalViewProviderFactory;
    :cond_1
    :try_start_1
    invoke-static {}, Lmokee/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to get external view provider"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "factory":Lmokee/externalviews/IExternalViewProviderFactory;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lmokee/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to connect to service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "factory":Lmokee/externalviews/IExternalViewProviderFactory;
    :cond_2
    :try_start_2
    invoke-static {}, Lmokee/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to get external view provider factory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalView;->-get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalView;->-get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalView;->-get4(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v2

    .line 144
    invoke-interface {v1, v2}, Lmokee/externalviews/IKeyguardExternalViewProvider;->unregisterCallback(Lmokee/externalviews/IKeyguardExternalViewCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1, v4}, Lmokee/externalviews/KeyguardExternalView;->-set0(Lmokee/externalviews/KeyguardExternalView;Lmokee/externalviews/IKeyguardExternalViewProvider;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    .line 150
    :cond_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalView;->-get5(Lmokee/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalView;->-get5(Lmokee/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 152
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$1;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1, v4}, Lmokee/externalviews/KeyguardExternalView;->-set2(Lmokee/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 141
    :cond_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
