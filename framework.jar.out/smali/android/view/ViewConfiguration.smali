.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasHwMenuKey:Z

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 252
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 253
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 254
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 255
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 256
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 257
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 258
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 259
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 260
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 262
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 264
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 266
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 281
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 282
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 283
    .local v3, "config":Landroid/content/res/Configuration;
    iget v5, v10, Landroid/util/DisplayMetrics;->density:F

    .line 285
    .local v5, "density":F
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 286
    const/high16 v16, 0x3fc00000    # 1.5f

    mul-float v13, v5, v16

    .line 291
    .local v13, "sizeAndDensity":F
    :goto_0
    const/high16 v16, 0x41400000    # 12.0f

    mul-float v16, v16, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 292
    const/high16 v16, 0x41400000    # 12.0f

    mul-float v16, v16, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 293
    const/high16 v16, 0x42480000    # 50.0f

    mul-float v16, v16, v5

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 294
    const/high16 v16, 0x45fa0000    # 8000.0f

    mul-float v16, v16, v5

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 295
    const/high16 v16, 0x41200000    # 10.0f

    mul-float v16, v16, v5

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 296
    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v16, v16, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 297
    const/high16 v16, 0x41800000    # 16.0f

    mul-float v16, v16, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 300
    const-string/jumbo v16, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 301
    .local v14, "win":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 302
    .local v7, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 303
    .local v12, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v12}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 304
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x4

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 306
    const/16 v16, 0x0

    mul-float v16, v16, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/view/ViewConfigurationHelper;->getOverScrollDistance(Landroid/content/Context;I)I

    move-result v16

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 307
    const/high16 v16, 0x40c00000    # 6.0f

    mul-float v16, v16, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/view/ViewConfigurationHelper;->getOverFlingDistance(Landroid/content/Context;I)I

    move-result v16

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 310
    const v16, 0x10e004b

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 313
    .local v4, "configVal":I
    packed-switch v4, :pswitch_data_0

    .line 316
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v15

    .line 318
    .local v15, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v15}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v16

    if-nez v16, :cond_2

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 319
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v15    # "wm":Landroid/view/IWindowManager;
    :goto_2
    const v16, 0x111004c

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 338
    .local v9, "hasNavBar":Z
    const v16, 0x10e0049

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 340
    .local v6, "deviceKeys":I
    const/4 v2, 0x4

    .line 341
    .local v2, "KEY_MASK_MENU":I
    if-nez v9, :cond_3

    and-int/lit8 v16, v6, 0x4

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasHwMenuKey:Z

    .line 344
    .end local v2    # "KEY_MASK_MENU":I
    .end local v4    # "configVal":I
    .end local v6    # "deviceKeys":I
    .end local v9    # "hasNavBar":Z
    :cond_0
    const v16, 0x1110013

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 346
    const v16, 0x1050008

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 351
    return-void

    .line 288
    .end local v7    # "display":Landroid/view/Display;
    .end local v12    # "size":Landroid/graphics/Point;
    .end local v13    # "sizeAndDensity":F
    .end local v14    # "win":Landroid/view/WindowManager;
    :cond_1
    move v13, v5

    .restart local v13    # "sizeAndDensity":F
    goto/16 :goto_0

    .line 318
    .restart local v4    # "configVal":I
    .restart local v7    # "display":Landroid/view/Display;
    .restart local v12    # "size":Landroid/graphics/Point;
    .restart local v14    # "win":Landroid/view/WindowManager;
    .restart local v15    # "wm":Landroid/view/IWindowManager;
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v8

    .line 321
    .local v8, "ex":Landroid/os/RemoteException;
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_2

    .line 327
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v15    # "wm":Landroid/view/IWindowManager;
    :pswitch_0
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 328
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_2

    .line 332
    :pswitch_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 333
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_2

    .line 341
    .restart local v2    # "KEY_MASK_MENU":I
    .restart local v6    # "deviceKeys":I
    .restart local v9    # "hasNavBar":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/view/ViewConfigurationHelper;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "cfg":Landroid/view/ViewConfiguration;
    if-eqz v0, :cond_miui_0

    move-object v1, v0

    :goto_miui_0
    return-object v1

    :cond_miui_0
    invoke-static {p0}, Landroid/view/ViewConfigurationHelper;->needMiuiConfiguration(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_miui_1

    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "cfg":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .restart local v0    # "cfg":Landroid/view/ViewConfiguration;
    invoke-static {p0, v0}, Landroid/view/ViewConfigurationHelper;->put(Landroid/content/Context;Landroid/view/ViewConfiguration;)V

    move-object v1, v0

    goto :goto_miui_0

    :cond_miui_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 362
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 364
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 365
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 366
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 367
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .prologue
    .line 489
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 478
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 709
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 509
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 499
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 451
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 436
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 662
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 625
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 396
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 403
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 719
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 595
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 460
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 698
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 738
    iget-object v5, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hardware_keys_disable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    .line 741
    .local v2, "hardwareKeysDisable":Z
    :goto_0
    iget-object v5, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "force_show_overflow_menu"

    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasHwMenuKey:Z

    if-eqz v5, :cond_1

    move v5, v4

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 744
    .local v1, "forceShowMenu":Z
    :goto_2
    iget-object v5, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emulate_hw_menu_key"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 747
    .local v0, "emulateHwMenuKey":Z
    :goto_3
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    .line 753
    :goto_4
    return v4

    .end local v0    # "emulateHwMenuKey":Z
    .end local v1    # "forceShowMenu":Z
    .end local v2    # "hardwareKeysDisable":Z
    :cond_0
    move v2, v4

    .line 738
    goto :goto_0

    .restart local v2    # "hardwareKeysDisable":Z
    :cond_1
    move v5, v3

    .line 741
    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    .restart local v1    # "forceShowMenu":Z
    :cond_3
    move v0, v4

    .line 744
    goto :goto_3

    .line 750
    .restart local v0    # "emulateHwMenuKey":Z
    :cond_4
    if-eqz v0, :cond_5

    move v4, v3

    .line 751
    goto :goto_4

    .line 753
    :cond_5
    iget-boolean v4, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_4
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
