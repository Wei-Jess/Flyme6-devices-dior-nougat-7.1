.class public Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
.super Ljava/lang/Object;
.source "ExternalQuickSettingsRecord.java"


# instance fields
.field public isCanceled:Z

.field public isUpdate:Z

.field public final sbTile:Lmokee/app/StatusBarPanelCustomTile;


# direct methods
.method public constructor <init>(Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "tile"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    .line 35
    return-void
.end method


# virtual methods
.method public getCustomTile()Lmokee/app/CustomTile;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lmokee/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v0

    return v0
.end method
