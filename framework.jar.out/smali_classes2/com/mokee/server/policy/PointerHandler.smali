.class public Lcom/mokee/server/policy/PointerHandler;
.super Ljava/lang/Object;
.source "PointerHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field public static e:Z


# instance fields
.field private b:Z

.field private c:I

.field private d:Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mokee/server/policy/PointerHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/server/policy/PointerHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScreenTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mokee/server/policy/PointerHandler;->b:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    sget-boolean v4, Lcom/mokee/server/policy/PointerHandler;->e:Z

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/mokee/server/policy/PointerHandler;->b:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mokee/server/policy/PointerHandler;->c:I

    :pswitch_2
    iput-boolean v0, p0, Lcom/mokee/server/policy/PointerHandler;->b:Z

    if-eqz v4, :cond_1

    sget-boolean v3, Lcom/mokee/aegis/PacifierInfo;->c:Z

    if-nez v3, :cond_2

    :goto_2
    sput-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    :pswitch_3
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/mokee/server/policy/PointerHandler;->c:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x432f0000    # 175.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mokee/server/policy/PointerHandler;->d:Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/server/policy/PointerHandler;->d:Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;

    invoke-interface {v0}, Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;->onThreeFingersSwipe()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/mokee/server/policy/PointerHandler;->b:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setListener(Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/server/policy/PointerHandler;->d:Lcom/mokee/server/policy/PointerHandler$ThreeFingerListener;

    return-void
.end method
