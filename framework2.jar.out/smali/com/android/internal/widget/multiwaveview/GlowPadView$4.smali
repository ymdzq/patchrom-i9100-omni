.class Lcom/android/internal/widget/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/GlowPadView;)I

    move-result v1

    # invokes: Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$600(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # setter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$502(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)I

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # invokes: Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$700(Lcom/android/internal/widget/multiwaveview/GlowPadView;ZZ)V

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # setter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$1002(Lcom/android/internal/widget/multiwaveview/GlowPadView;Z)Z

    .line 217
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$800(Lcom/android/internal/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$800(Lcom/android/internal/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/util/ArrayList;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$802(Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # invokes: Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$700(Lcom/android/internal/widget/multiwaveview/GlowPadView;ZZ)V

    goto :goto_0
.end method
