.class Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$2;
.super Ljava/lang/Object;
.source "IconCacheManagerServiceBroker.java"

# interfaces
.implements Lorg/mokee/platform/internal/common/BrokeredServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$2;->this$0:Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokeredServiceConnected()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onBrokeredServiceDisconnected()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
