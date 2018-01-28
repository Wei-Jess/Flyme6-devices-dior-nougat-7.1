.class Lmokee/themes/ThemeManager$1;
.super Lmokee/themes/IThemeChangeListener$Stub;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/themes/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/themes/ThemeManager;


# direct methods
.method constructor <init>(Lmokee/themes/ThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/themes/ThemeManager;

    .prologue
    .line 84
    iput-object p1, p0, Lmokee/themes/ThemeManager$1;->this$0:Lmokee/themes/ThemeManager;

    invoke-direct {p0}, Lmokee/themes/IThemeChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lmokee/themes/ThemeManager;->-get2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/themes/ThemeManager$1$2;

    invoke-direct {v1, p0, p1}, Lmokee/themes/ThemeManager$1$2;-><init>(Lmokee/themes/ThemeManager$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lmokee/themes/ThemeManager;->-get2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/themes/ThemeManager$1$1;

    invoke-direct {v1, p0, p1}, Lmokee/themes/ThemeManager$1$1;-><init>(Lmokee/themes/ThemeManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
