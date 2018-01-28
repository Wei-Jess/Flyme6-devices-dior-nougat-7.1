.class public interface abstract Lorg/mokee/internal/themes/IIconCacheManager;
.super Ljava/lang/Object;
.source "IIconCacheManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/internal/themes/IIconCacheManager$NoOp;,
        Lorg/mokee/internal/themes/IIconCacheManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
