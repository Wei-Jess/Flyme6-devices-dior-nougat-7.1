.class Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;
.super Ljava/lang/Object;
.source "MKStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lmokee/app/StatusBarPanelCustomTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

.field final synthetic val$info:Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbcClone:Lmokee/app/StatusBarPanelCustomTile;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "this$1"    # Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;
    .param p2, "val$info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p3, "val$sbcClone"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 639
    iput-object p1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;->this$1:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    iput-object p2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;->val$info:Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;->val$sbcClone:Lmokee/app/StatusBarPanelCustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;->this$1:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;->val$info:Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;->val$sbcClone:Lmokee/app/StatusBarPanelCustomTile;

    invoke-static {v0, v1, v2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->-wrap1(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V

    .line 641
    return-void
.end method
