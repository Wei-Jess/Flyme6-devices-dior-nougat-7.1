.class final Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;
.super Ljava/util/ArrayList;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/ThemeVersion$ThemeVersionImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lmokee/app/ThemeVersion$ComponentVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 135
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->OVERLAY:Lmokee/app/ThemeComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v4}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->BOOT_ANIM:Lmokee/app/ThemeComponent;

    invoke-direct {v0, v3, v1, v3}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->WALLPAPER:Lmokee/app/ThemeComponent;

    invoke-direct {v0, v4, v1, v3}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->LOCKSCREEN:Lmokee/app/ThemeComponent;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, v3}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->ICON:Lmokee/app/ThemeComponent;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v3}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->FONT:Lmokee/app/ThemeComponent;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v3}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lmokee/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lmokee/app/ThemeComponent;->SOUND:Lmokee/app/ThemeComponent;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v3}, Lmokee/app/ThemeVersion$ComponentVersion;-><init>(ILmokee/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lmokee/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method
