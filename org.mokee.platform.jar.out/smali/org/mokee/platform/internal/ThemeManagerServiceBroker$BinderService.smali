.class final Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;
.super Lmokee/themes/IThemeService$Stub;
.source "ThemeManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/ThemeManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;


# direct methods
.method private constructor <init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-direct {p0}, Lmokee/themes/IThemeService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    return-void
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 159
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0}, Lmokee/themes/IThemeService;->applyDefaultTheme()V

    .line 157
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
    .line 216
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 217
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0}, Lmokee/themes/IThemeService;->getLastThemeChangeRequestType()I

    move-result v0

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
    .line 210
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 211
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0}, Lmokee/themes/IThemeService;->getLastThemeChangeTime()J

    move-result-wide v0

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
    .line 170
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 171
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0}, Lmokee/themes/IThemeService;->getProgress()I

    move-result v0

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
    .line 164
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 165
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0}, Lmokee/themes/IThemeService;->isThemeApplying()Z

    move-result v0

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
    .line 182
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 183
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1}, Lmokee/themes/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v0

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
    .line 176
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 177
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1}, Lmokee/themes/IThemeService;->processThemeResources(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rebuildResourceCache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 205
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0}, Lmokee/themes/IThemeService;->rebuildResourceCache()V

    .line 203
    return-void
.end method

.method public registerThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 190
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1}, Lmokee/themes/IThemeService;->registerThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V

    .line 191
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 188
    return-void
.end method

.method public removeUpdates(Lmokee/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 145
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1}, Lmokee/themes/IThemeService;->removeUpdates(Lmokee/themes/IThemeChangeListener;)V

    .line 146
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 143
    return-void
.end method

.method public requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V
    .locals 1
    .param p1, "request"    # Lmokee/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 153
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lmokee/themes/IThemeService;->requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V

    .line 151
    return-void
.end method

.method public requestThemeChangeUpdates(Lmokee/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 138
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1}, Lmokee/themes/IThemeService;->requestThemeChangeUpdates(Lmokee/themes/IThemeChangeListener;)V

    .line 139
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 136
    return-void
.end method

.method public unregisterThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    .line 198
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/themes/IThemeService;

    invoke-interface {v0, p1}, Lmokee/themes/IThemeService;->unregisterThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V

    .line 199
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 196
    return-void
.end method
