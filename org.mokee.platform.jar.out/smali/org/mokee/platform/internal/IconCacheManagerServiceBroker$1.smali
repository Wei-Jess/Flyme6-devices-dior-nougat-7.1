.class Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$1;
.super Lorg/mokee/internal/themes/IIconCacheManager$Stub;
.source "IconCacheManagerServiceBroker.java"


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
    .line 43
    iput-object p1, p0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;

    invoke-direct {p0}, Lorg/mokee/internal/themes/IIconCacheManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
