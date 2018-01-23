.class Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;
.super Ljava/lang/Object;
.source "ThemeManagerServiceBroker.java"

# interfaces
.implements Lorg/mokee/platform/internal/common/BrokeredServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/ThemeManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    .prologue
    .line 276
    iput-object p1, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokeredServiceConnected()V
    .locals 6

    .prologue
    .line 282
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lmokee/themes/IThemeService;

    .line 284
    .local v3, "themeService":Lmokee/themes/IThemeService;
    :try_start_0
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 285
    .local v0, "N":I
    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 286
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 288
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lmokee/themes/IThemeChangeListener;

    .line 287
    invoke-interface {v3, v4}, Lmokee/themes/IThemeService;->requestThemeChangeUpdates(Lmokee/themes/IThemeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 298
    .end local v0    # "N":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 299
    .restart local v0    # "N":I
    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    .line 300
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 302
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lmokee/themes/IThemeProcessingListener;

    .line 301
    invoke-interface {v3, v4}, Lmokee/themes/IThemeService;->registerThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 291
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 293
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 294
    iget-object v5, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v5}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 293
    throw v4

    .line 308
    .restart local v0    # "N":I
    :cond_1
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 278
    .end local v0    # "N":I
    :goto_3
    return-void

    .line 305
    :catch_1
    move-exception v1

    .line 308
    .restart local v1    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 307
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 308
    iget-object v5, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v5}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 307
    throw v4
.end method

.method public onBrokeredServiceDisconnected()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
