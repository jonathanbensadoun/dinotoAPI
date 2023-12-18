'use strict';

/**
 * environement service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::environement.environement');
