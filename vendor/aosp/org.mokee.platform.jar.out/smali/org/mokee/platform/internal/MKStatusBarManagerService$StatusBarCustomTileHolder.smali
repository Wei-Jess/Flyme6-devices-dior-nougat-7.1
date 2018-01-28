.class final Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;
.super Lmokee/app/IStatusBarCustomTileHolder$Stub;
.source "MKStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/MKStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusBarCustomTileHolder"
.end annotation


# instance fields
.field private mValue:Lmokee/app/StatusBarPanelCustomTile;


# direct methods
.method public constructor <init>(Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "value"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 681
    invoke-direct {p0}, Lmokee/app/IStatusBarCustomTileHolder$Stub;-><init>()V

    .line 682
    iput-object p1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lmokee/app/StatusBarPanelCustomTile;

    .line 681
    return-void
.end method


# virtual methods
.method public get()Lmokee/app/StatusBarPanelCustomTile;
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lmokee/app/StatusBarPanelCustomTile;

    .line 689
    .local v0, "value":Lmokee/app/StatusBarPanelCustomTile;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lmokee/app/StatusBarPanelCustomTile;

    .line 690
    return-object v0
.end method
