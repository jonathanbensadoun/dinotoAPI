'use strict';

/**
 * dinosaure service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::dinosaure.dinosaure');
