-- Conversion Funnel Analysis
-- Funnel Stages: Ad View → Ad Click → Add to Cart → Purchase

-- Step 1: Total number of users who viewed the ad
SELECT COUNT(DISTINCT user_id) AS ad_views
FROM funnel_data
WHERE event = 'ad_view';

-- Step 2: Users who clicked the ad
SELECT COUNT(DISTINCT user_id) AS ad_clicks
FROM funnel_data
WHERE event = 'ad_click';

-- Step 3: Users who added items to cart
SELECT COUNT(DISTINCT user_id) AS added_to_cart
FROM funnel_data
WHERE event = 'add_to_cart';

-- Step 4: Users who completed a purchase
SELECT COUNT(DISTINCT user_id) AS purchases
FROM funnel_data
WHERE event = 'purchase';

-- Step 5: Funnel Conversion Rates
-- This calculates conversion % from each stage to the next
SELECT
  ROUND(100.0 * COUNT(DISTINCT CASE WHEN event = 'ad_click' THEN user_id END) /
              NULLIF(COUNT(DISTINCT CASE WHEN event = 'ad_view' THEN user_id END), 0), 2) AS click_through_rate,

  ROUND(100.0 * COUNT(DISTINCT CASE WHEN event = 'add_to_cart' THEN user_id END) /
              NULLIF(COUNT(DISTINCT CASE WHEN event = 'ad_click' THEN user_id END), 0), 2) AS add_to_cart_rate,

  ROUND(100.0 * COUNT(DISTINCT CASE WHEN event = 'purchase' THEN user_id END) /
              NULLIF(COUNT(DISTINCT CASE WHEN event = 'add_to_cart' THEN user_id END), 0), 2) AS purchase_rate
FROM funnel_data;
