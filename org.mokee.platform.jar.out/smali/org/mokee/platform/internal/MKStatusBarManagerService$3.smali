.class Lorg/mokee/platform/internal/MKStatusBarManagerService$3;
.super Ljava/lang/Object;
.source "MKStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mokee/platform/internal/MKStatusBarManagerService;->createCustomTileWithTagInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILmokee/app/CustomTile;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$customTile:Lmokee/app/CustomTile;

.field final synthetic val$id:I

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lmokee/app/CustomTile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKStatusBarManagerService;
    .param p2, "val$customTile"    # Lmokee/app/CustomTile;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$opPkg"    # Ljava/lang/String;
    .param p5, "val$id"    # I
    .param p6, "val$tag"    # Ljava/lang/String;
    .param p7, "val$callingUid"    # I
    .param p8, "val$callingPid"    # I
    .param p9, "val$user"    # Landroid/os/UserHandle;
    .param p10, "val$userId"    # I

    .prologue
    .line 281
    iput-object p1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iput-object p2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$customTile:Lmokee/app/CustomTile;

    iput-object p3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$opPkg:Ljava/lang/String;

    iput p5, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$id:I

    iput-object p6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$tag:Ljava/lang/String;

    iput p7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$callingUid:I

    iput p8, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$callingPid:I

    iput-object p9, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 285
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$customTile:Lmokee/app/CustomTile;

    invoke-virtual {v1}, Lmokee/app/CustomTile;->getResourcesPackageName()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "resPkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    .line 290
    :cond_0
    new-instance v0, Lmokee/app/StatusBarPanelCustomTile;

    .line 291
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$opPkg:Ljava/lang/String;

    iget v4, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$id:I

    iget-object v5, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$tag:Ljava/lang/String;

    iget v6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$callingUid:I

    iget v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$callingPid:I

    iget-object v8, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$customTile:Lmokee/app/CustomTile;

    iget-object v9, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$user:Landroid/os/UserHandle;

    .line 290
    invoke-direct/range {v0 .. v9}, Lmokee/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILmokee/app/CustomTile;Landroid/os/UserHandle;)V

    .line 292
    .local v0, "sbc":Lmokee/app/StatusBarPanelCustomTile;
    new-instance v13, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    invoke-direct {v13, v0}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;-><init>(Lmokee/app/StatusBarPanelCustomTile;)V

    .line 293
    .local v13, "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v1, v1, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    .line 295
    .local v11, "old":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->indexOfQsTileLocked(Ljava/lang/String;)I

    move-result v10

    .line 296
    .local v10, "index":I
    if-gez v10, :cond_4

    .line 298
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$callingUid:I

    iget v5, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$userId:I

    invoke-static {v1, v3, v4, v5}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-wrap0(Lorg/mokee/platform/internal/MKStatusBarManagerService;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 299
    :cond_1
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v1, v1, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_0
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v1, v1, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$customTile:Lmokee/app/CustomTile;

    iget v1, v1, Lmokee/app/CustomTile;->icon:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$customTile:Lmokee/app/CustomTile;

    iget-object v1, v1, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 309
    :cond_2
    if-eqz v11, :cond_5

    iget-object v12, v11, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    .line 310
    :goto_1
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v1}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get1(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyPostedLocked(Lmokee/app/StatusBarPanelCustomTile;Lmokee/app/StatusBarPanelCustomTile;)V

    .line 283
    :cond_3
    :goto_2
    return-void

    .line 301
    :cond_4
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v1, v1, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "old":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    check-cast v11, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    .line 302
    .restart local v11    # "old":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    iget-object v1, v1, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, v13, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->isUpdate:Z

    goto :goto_0

    .line 309
    :cond_5
    const/4 v12, 0x0

    .local v12, "oldSbn":Lmokee/app/StatusBarPanelCustomTile;
    goto :goto_1

    .line 312
    .end local v12    # "oldSbn":Lmokee/app/StatusBarPanelCustomTile;
    :cond_6
    const-string/jumbo v1, "MKStatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not posting custom tile with no icon set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->val$customTile:Lmokee/app/CustomTile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v11, :cond_3

    iget-boolean v1, v11, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    if-nez v1, :cond_3

    .line 314
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v1}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get1(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lmokee/app/StatusBarPanelCustomTile;)V

    goto :goto_2
.end method
