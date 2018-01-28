.class Lorg/mokee/platform/internal/ThemeManagerServiceBroker$1;
.super Lmokee/themes/IThemeService$Stub;
.source "ThemeManagerServiceBroker.java"


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
    .line 69
    iput-object p1, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-direct {p0}, Lmokee/themes/IThemeService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public getLastThemeChangeRequestType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getLastThemeChangeTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProgress()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isThemeApplying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public rebuildResourceCache()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method public registerThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method

.method public removeUpdates(Lmokee/themes/IThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V
    .locals 0
    .param p1, "request"    # Lmokee/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public requestThemeChangeUpdates(Lmokee/themes/IThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public unregisterThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method
