.class Lorg/mokee/platform/internal/MKStatusBarManagerService$4;
.super Ljava/lang/Object;
.source "MKStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mokee/platform/internal/MKStatusBarManagerService;->removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

.field final synthetic val$id:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKStatusBarManagerService;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$tag"    # Ljava/lang/String;
    .param p4, "val$id"    # I
    .param p5, "val$userId"    # I

    .prologue
    .line 435
    iput-object p1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iput-object p2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$tag:Ljava/lang/String;

    iput p4, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$id:I

    iput p5, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 438
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v4, v3, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 439
    :try_start_0
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v5, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$pkg:Ljava/lang/String;

    iget-object v6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$tag:Ljava/lang/String;

    iget v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$id:I

    iget v8, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->val$userId:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->indexOfQsTileLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 440
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 441
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v3, v3, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    .line 442
    .local v2, "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v3, v3, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    .line 445
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v3}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get1(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    move-result-object v3

    iget-object v5, v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v3, v5}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lmokee/app/StatusBarPanelCustomTile;)V

    .line 446
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v3, v3, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    iget-object v5, v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v5}, Lmokee/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v2}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v3

    iget-object v3, v3, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 449
    :try_start_1
    invoke-virtual {v2}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v3

    iget-object v3, v3, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 437
    return-void

    .line 450
    .restart local v2    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v3, "MKStatusBarManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 454
    iget-object v6, v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v6}, Lmokee/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 438
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "index":I
    .end local v2    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
