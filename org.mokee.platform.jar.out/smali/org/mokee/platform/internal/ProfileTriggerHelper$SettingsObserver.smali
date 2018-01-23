.class Lorg/mokee/platform/internal/ProfileTriggerHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ProfileTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/ProfileTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/ProfileTriggerHelper;


# direct methods
.method public constructor <init>(Lorg/mokee/platform/internal/ProfileTriggerHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/ProfileTriggerHelper;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/mokee/platform/internal/ProfileTriggerHelper$SettingsObserver;->this$0:Lorg/mokee/platform/internal/ProfileTriggerHelper;

    .line 61
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lorg/mokee/platform/internal/ProfileTriggerHelper$SettingsObserver;->this$0:Lorg/mokee/platform/internal/ProfileTriggerHelper;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/ProfileTriggerHelper;->updateEnabled()V

    .line 65
    return-void
.end method
