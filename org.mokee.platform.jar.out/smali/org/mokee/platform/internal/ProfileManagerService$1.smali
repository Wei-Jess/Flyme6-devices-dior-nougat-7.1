.class Lorg/mokee/platform/internal/ProfileManagerService$1;
.super Ljava/lang/Object;
.source "ProfileManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/ProfileManagerService;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/mokee/platform/internal/ProfileManagerService$1;->this$0:Lorg/mokee/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mokee/platform/internal/ProfileManagerService$1;->this$0:Lorg/mokee/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/ProfileManagerService;->-wrap4(Lorg/mokee/platform/internal/ProfileManagerService;)V

    .line 110
    return-void
.end method
