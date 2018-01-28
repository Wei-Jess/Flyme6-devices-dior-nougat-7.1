.class final synthetic Lcom/android/server/ConnectivityService$-void_startCaptivePortalApp_android_net_Network_network_LambdaImpl0;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startCaptivePortalApp_android_net_Network_network_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$network:Landroid/net/Network;

.field private synthetic val$this:Lcom/android/server/ConnectivityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$-void_startCaptivePortalApp_android_net_Network_network_LambdaImpl0;->val$this:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$-void_startCaptivePortalApp_android_net_Network_network_LambdaImpl0;->val$network:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityService$-void_startCaptivePortalApp_android_net_Network_network_LambdaImpl0;->val$this:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$-void_startCaptivePortalApp_android_net_Network_network_LambdaImpl0;->val$network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->-com_android_server_ConnectivityService_lambda$2(Landroid/net/Network;)V

    return-void
.end method
